class StyleBuilder {
  
  class func guide(styleBuilder: StyleBuilder = StyleBuilder()) -> [Guide] {
    var guide = [Guide]()
    guide.append(.headerLabel(styleBuilder.headerLabel))
    guide.append(.bodyLabel(styleBuilder.bodyLabel))
    guide.append(.loginTextField(styleBuilder.loginTextField))
    return guide
  }
  
  var headerLabel: (UILabel) -> () = { control in
    control.font = UIFont.systemFont(ofSize: 20)
    control.textColor = .red
  }
  var bodyLabel: (UILabel) -> () = { control in
    control.font = UIFont.systemFont(ofSize: 15)
    control.textColor = .darkGray
  }
  var loginTextField: (UITextField) -> () = { control in
    control.font = UIFont.systemFont(ofSize: 15)
    control.textColor = .darkGray
  }
}

enum Guide {
  case headerLabel((UILabel) -> ())
  case bodyLabel((UILabel) -> ())
  case loginTextField((UITextField) -> ())
  
  func identifier() -> String {
    switch self {
    case .headerLabel: return "header"
    case .bodyLabel: return "body"
    case .loginTextField: return "login"
    }
  }
}
