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
  float _ax;
  float _t=0;
  
  float _dir;
  float _timeTotal;
  float _timeTotalX;
  float _step = 0.125;
  
  boolean _up;
  boolean _left;
  
  int pass;
  
  boolean _front;
  
  Particle(float x, float y, float vx, float vy, float ax, float a) 
  {
    _x0  = _x = x;
    _y0  = _y = y;
    _vx0 = _vx = vx;
    _vy0 = _vy = vy;
    _a   = a;
    _ax = ax; //<>//
  }
  
  void update()
  {
    move();
    
    if(MRUVGetV(_vx0,_a,_timeTotalX)== 0){
      _front = !_front;
    }
  } 
  
  void show(int i)
  {
    if(_front && i ==2){
      fill(255);
      noStroke();
      ellipse(_x,_y,15,15);    
    }
    
    if(!_front && i ==1){
      fill(255);
      noStroke();
      ellipse(_x,_y,15,15);    
    }
    
    
    //if(round(MRUVGetV(_vy0,_a,_timeTotal))==0)
    //{
    //  textSize(12);
    //  text(str(_y), _x, _y); 
    //  fill(0, 102, 153);  
    //}
      
     //textSize(12);
     //text(str(round(MRUVGetV(_vy0,_a,_timeTotal)))+"m/s", _x+5, _y); 
  }
  
  void move()
  {
    
    moveY();
    moveX(); //<>//
  }
  
  void moveX()
  {
    _timeTotalX += _step;
    if (_x > _x0 && !_left)
    {
      _ax = -abs(_ax);
      _vx0 = abs(_vx0);
      _left = !_left;
      _timeTotalX = 0;
    }
    else if( _x < _x0 && _left)
    {
      _ax = abs(_ax);
      _vx0 = -abs(_vx0);
      _left = !_left;
      _timeTotalX = 0;
    }
    
    _x = MRUVGetPos(_x0, _vx0, _timeTotalX, _ax);
  }
  
  void moveY()
  {
    _timeTotal += _step;
 
    if (_y > _y0 && !_up)
    {
      _a = -abs(_a);
      _vy0 = abs(_vy0);
      _up = !_up;
      _timeTotal = 0;
    }
    else if( this._y < _y0 && _up)
    {
      _a = abs(_a);
      _vy0 = -abs(_vy0);
      _up = !_up;
      _timeTotal = 0;
    }
    
    this._y = MRUVGetPos(_y0, _vy0, _timeTotal, _a);
  }
 //<>//
  
  float MRUVGetPos(float p0, float v0, float t, float a)
  {
    float res;
    
    res = p0 + v0*t + 0.5*a*sq(t);
    return res; 
  }
  
  float MRUVGetV(float v0,float a, float t)
  {
    return v0 + a*t;
  }
}
