protocol SpecialToolBox{
    func hammer()
    func drill()
}

struct Boss{
    
    var delegate: SpecialToolBox?
    
    func saysStartHammering(){
        delegate?.hammer()
    }
    
    func saysStartDrilling(){
        delegate?.drill()
    }
}

struct Worker: SpecialToolBox{
    
    func drill() {
        print("Im drilling man")
    }
    
    func hammer(){
        print("Im hammering man")
    }
}

let worker = Worker()
let boss = Boss(delegate:worker)

boss.saysStartDrilling()
boss.saysStartHammering()
