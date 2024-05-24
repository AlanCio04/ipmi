// TP2
// COMI 5
// Alan Carabajal, Legajo: 118986/1

PFont fuente;
PImage hogwarts, personajes, bar;

int pantalla, tiempo, suma;
float alphaText = 0;
float alphaImage = 0; 
boolean fadingIn = true;

boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;

void setup() {
  size(640, 480);
  
  hogwarts = loadImage("hogwarts.jpg");
  personajes = loadImage("personajes.jpg");
  bar = loadImage("bar.jpg");

  fuente = createFont("Arial", 48);
  textFont(fuente);
  textSize(56);

  pantalla = 0;
  tiempo = 0;
  suma = 5;

  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
  
  if (pantalla == 0) {
    
    push();
    
    tint(255, alphaImage);
    image(hogwarts, 0, 0, width, height);
    fill(0, 0, 0, alphaText);
    textAlign(CENTER, CENTER);
    text("Harry Potter \n Creada por J. K. Rowling.", width / 2, height / 2);
    
    pop();
    
  } else if (pantalla == 1) {
   
    push();
    
    background(255);
    tint(255, alphaImage);
    image(personajes, 0, 0, width, height);
    fill(0, 0, 0, alphaText);
    textAlign(CENTER, CENTER);
      textSize(30);
    text("es una serie de novelas fantásticas \n en la que se describen las aventuras \n del joven aprendiz de magia y hechicería ", width / 2, height / 2);
    
    pop();
    
  } else if (pantalla == 2) {
    
    push();
    
    background(255);
    tint(255, alphaImage);
    image(bar, 0, 0, width, height);
    fill(0, 0, 0, alphaText); 
    textAlign(CENTER, CENTER);
          textSize(30);
    text("En 1999, la productora de cine Warner Bros.\n adquirió los derechos para adaptar los siete\n libros a una serie de películas.", width / 2, height / 2);

    if (ultimaPantalla) {
      fill(colorDelBoton);
      rectMode(CENTER);
      rect(width / 2, 350, 300, 50);
      textSize(48);
      fill(0);
      textAlign(CENTER, CENTER);
      text("Reiniciar", width / 2, 350);
    }
   
    pop();
    
  } 
  else {
    background(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("NOS PASAMOS", width / 2, height / 2);
  }


  if (fadingIn) {
    alphaText += 2;
    alphaImage += 2;
    if (alphaText >= 255) {
      alphaText = 255;
    }
    if (alphaImage >= 255) {
      alphaImage = 255;
      fadingIn = false;
    }
  } 
  else {
    alphaText -= 2;
    alphaImage -= 2;
    if (alphaText <= 0) {
      alphaText = 0;
    }
    if (alphaImage <= 0) {
      alphaImage = 0;
      fadingIn = true;
    }
  }

////tiempo

  if (!ultimaPantalla) {
    tiempo += suma;
  }

  if (tiempo >= 600 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
      alphaText = 0;
      alphaImage = 0;
      fadingIn = true;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
      alphaText = 255;
      alphaImage = 255;
    }
  }
}

void mouseClicked() {
  if (ultimaPantalla) {
    // BOTON RECTANGULAR:
    if (mouseX > 171 && mouseX < 470 && mouseY > 325 && mouseY < 373) {
      pantalla = 0;
      tiempo = 0;
      suma = 5;
      ultimaPantalla = false;
      alphaText = 0;
      alphaImage = 0;
      fadingIn = true;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla) {
    // CONDICION PARA BOTÓN RECTANGULAR
    if (mouseX > 171 && mouseX < 470 && mouseY > 325 && mouseY < 373) {
      colorDelBoton = color(0, 255, 0);
    } else {
      colorDelBoton = color(120, 120, 120);
    }
  }
}
