class Particle {
  float _posX;
  float _posY;
  
  float _pos0Y;
  
  float _voY;
  float _vY;
  float _acel;
  
  float _dir;
  float _timeTotal;
  float _step = 0.1;
  float _timeCount=0;
  
  int pass;
  
  Particle(float posX, float posY, float voY, float acel) 
  {
    _posX = posX;
    _pos0Y = posY;
    _posY = posY;
    _voY  = voY;
    _acel = acel;
    
    _vY = voY;
    _dir = 1;
    
    _timeTotal = GetTime(); //<>//
    pass = 1;
  }
  
  float GetTime()
  {
    return (_voY*_voY)/(2*(_acel));
  }
  
  void update()
  {
    moveY();
  } 
  
  void show()
  {
    fill(255);
    noStroke();
    ellipse(_posX,_posY,15,15);
    
    textSize(16);
    text("pos y: "+ _posY, 1, 15); 
    fill(0, 102, 153);  
    textSize(16);
    text("vel y: "+_voY + _acel * _timeCount, 15, 30); 
    fill(0, 102, 153);
    text("vo y: "+_voY , 20, 50); 
    fill(0, 102, 153);
    text("_acel: "+ _acel, 20, 70); 
    fill(0, 102, 153);
    text("time count: "+_timeCount, 20, 90); 
    fill(0, 102, 153);
  }
  
  void moveY()
  {
    _posY = _posY + GetVY(); //<>//
  }
  
  float GetVY()
  {
    if
    
    _timeCount = _timeCount + _step;
    return _voY + _acel * _timeCount;
  } //<>//
}
