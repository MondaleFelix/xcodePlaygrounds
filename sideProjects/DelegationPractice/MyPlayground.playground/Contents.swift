protocol SpecialToolBox{
    func hammer()
    func drill()
}

struct Boss{
    
    var delegate: SpecialToolBox?
    
    func saysStartHammering(){
        delegate?.drill()
    }
    
    func saysStartDrilling(){
        delegate?.hammer()
    }
}

struct Worker: SpecialToolBox{
    
    func drill(){
        print("I am drilling bro")
    }

    func hammer(){
        print("I am hammering man")
    }
}

let worker = Worker()
let boss = Boss(delegate:worker)

boss.saysStartDrilling()
boss.saysStartHammering()
