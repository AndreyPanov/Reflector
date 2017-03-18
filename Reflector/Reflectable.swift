protocol Reflectable {
  func applyStyle()
}

extension Reflectable {
  
  func applyStyle() {
    StyleBuilder.guide().forEach { setStyle(with: $0) }
  }
  
  private func setStyle(with guide: Guide) {
    switch guide {
      case .headerLabel(let closure),
           .bodyLabel(let closure):
        perform(with: guide.identifier(), closure: closure)
      case .loginTextField(let closure):
        perform(with: guide.identifier(), closure: closure)
    }
  }
  
  private func perform<T>(with identifier: String, closure: (T) -> ()) {
    Mirror(reflecting: self).children.forEach { property in
      guard property.label?.lowercased().contains(identifier.lowercased()) == true else { return }
      
      if let value = property.value as? T {
        closure(value)
      }
    }
  }
}
