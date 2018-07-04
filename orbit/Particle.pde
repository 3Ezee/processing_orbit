class Particle {
  float _x;
  float _y;
  
  float _y0;
  float _x0;
  
  float _vy;
  float _vx;
  float _vy0;
  float _vx0;
  float _a;
  float _t=0;
  
  float _dir;
  float _timeTotal;
  float _step = 0.1;
  
  boolean _up;
  
  int pass;
  
  Particle(float x, float y, float vx, float vy, float a) 
  {
    _x0 = _x = x;
    _y0 = _y = y;
    _vx0 = _vx = vx;
    _vy0 = _vy = vy;
    
    _a = a; //<>//
  }
  
  void update()
  {
    move();
  } 
  
  void show()
  {
    fill(255);
    noStroke();
    ellipse(_x,_y,15,15);
    
    println("y: "+_y0+", y: " +_y +", vy0 " +_vy0+" vel: " + MRUVGetV(_vy0, _a, _timeTotal)+" up: " + _up + _a  );
  }
  
  void move()
  {
    moveY(); //<>//
  }
  
  void moveY()
  {
    _timeTotal += 0.125;
    //textSize(16);
    //text("timer y: "+ _timeTotal, 1, 15); 
    //fill(0, 102, 153);  
    if (_up && _y<_y0 )
    {
      _up = !_up;
      _a = -_a;
    }
    else if(!_up && _y>_y0)
    {
      _up = !_up;
      _a = -_a;
    }
    
    _y = MRUVGetPos(_y0, _vy0, _timeTotal, _a);
  }
 //<>//
  
  float MRUVGetPos(float p0, float v0, float t, float a)
  {
     return p0 + v0*t + 0.5*a*sq(t);
  }
  
  float MRUVGetV(float v0,float a, float t)
  {
    return v0 + a*t;
  }
}
