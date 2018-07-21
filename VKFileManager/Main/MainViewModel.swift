import SwiftyVK

class MainViewModel: SwiftyVKDelegate{
    func vkNeedsScopes(for sessionId: String) -> Scopes {
        return scopes
    }
    
    func vkNeedToPresent(viewController: VKViewController) {
        if let rootController = UIApplication.shared.keyWindow?.rootViewController {
            rootController.present(viewController, animated: true)
        }
    }
    
    private let router: MainRouter.Routes

    let appId = "4994842"
    let scopes: Scopes = [.messages,.offline,.friends,.wall,.photos,.audio,.video,.docs,.market,.email]
    
    init(router: MainRouter.Routes){
        self.router = router
        
        VK.setUp(appId: appId, delegate: self)
    }
    
    func didTriggerAuthUser(onSuccess: @escaping ()->Void,
                            onSessionRecovered: @escaping ()->Void,
                            onError:@escaping (VKError)->Void){
        VK.sessions.default.config.language = .ru
        
        VK.sessions.default.logIn(onSuccess: { _ in
            onSuccess()
        }) { errCode in
            switch errCode{
            case .authorizationCancelled,
            .authorizationDenied,
            .authorizationFailed,
            .authorizationUrlIsNil:
                onError(errCode)
            case .sessionAlreadyAuthorized( _):
                onSessionRecovered()
            default:
                onError(VKError.authorizationFailed)
            }
        }
    }
    
    func didTriggerSettingsEvent() {
        router.openSettingsModule()
    }
    
    func vkTokenCreated(for sessionId: String, info: [String : String]) {
        print("token created in session \(sessionId) with info \(info)")
    }
    
    func vkTokenUpdated(for sessionId: String, info: [String : String]) {
        print("token updated in session \(sessionId) with info \(info)")
    }
    
    func vkTokenRemoved(for sessionId: String) {
        print("token removed in session \(sessionId)")
    }
}
