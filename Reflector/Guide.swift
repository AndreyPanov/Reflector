class StyleBuilder {
  
  func guide() -> [Guide] {
    return [
      .headerLabel(headerLabel),
      .bodyLabel(bodyLabel),
      .loginTextField(loginTextField)
    ]
  }
  
  //configure all styles for UI elements
  var headerLabel: (UILabel) -> () = { control in
    control.font = .systemFont(ofSize: 20)
    control.textColor = .red
  }
  var bodyLabel: (UILabel) -> () = { control in
    control.font = .systemFont(ofSize: 15)
    control.textColor = .darkGray
  }
  var loginTextField: (UITextField) -> () = { control in
    control.font = .systemFont(ofSize: 15)
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
