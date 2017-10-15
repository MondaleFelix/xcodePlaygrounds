protocol SpecialToolBox{
    func drill()
    func hammer()
}

struct Boss{
    var delegate: SpecialToolBox?
    
    func saysStartDrilling(){
        delegate?.drill()
    }
    
    func saysStartHammering(){
        
    }
    
}
