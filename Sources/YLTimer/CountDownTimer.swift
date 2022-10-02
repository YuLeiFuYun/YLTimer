import Foundation

public final class CountDownTimer {
    private let timer: DispatchSourceTimer
    
    private var remainingTime: Int
    
    private var completion: () -> Void
    
    /// 倒数计时器
    /// - Parameters:
    ///   - interval: 倒计时间隔，默认为 1 秒
    ///   - duration: 倒计时时长，以秒为单位
    ///   - queue: 操作所在的队列，默认为主队列
    ///   - handler: 倒计时期间要执行的操作，每隔 interval 时间调用一次
    ///   - completion: 倒计时结束时要执行的操作
    public init(
        interval: DispatchTimeInterval = .seconds(1),
        duration: Int,
        queue: DispatchQueue = .main,
        handler: @escaping (_ remainingTime: Int) -> Void = { _ in },
        completion: @escaping () -> Void
    ) {
        guard duration >= 0 else {
            fatalError("The number of times cannot be negative!")
        }
        
        self.remainingTime = duration - 1
        self.completion = completion
        
        self.timer = DispatchSource.makeTimerSource(flags: .strict, queue: queue)
        self.timer.schedule(deadline: .now() + interval, repeating: interval)
        self.timer.setEventHandler { [weak self] in
            guard let self = self else { return }
            
            handler(self.remainingTime)
            self.remainingTime -= 1
            if self.remainingTime < 0 {
                self.timer.cancel()
                completion()
            }
        }
    }
    
    /// 开始倒计时
    public func fire() {
        timer.resume()
    }
    
    /// 跳过倒计时
    /// - Parameter shouldPerformCompletion: 是否要执行 completion，默认为 true
    public func skip(shouldPerformCompletion: Bool = true) {
        timer.cancel()
        if shouldPerformCompletion { completion() }
    }
    
    deinit {
        timer.setEventHandler { }
        timer.cancel()
    }
}
