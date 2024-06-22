//// https://youtu.be/ycCDi-l_TOE
PImage imagen;
int circulos = 35; //// cant de circulos
int Tamciruclos; //// tamaño de circulos
int colorCicurlos; //// Color de circulos
int colorRandom = 0; //// color aleatorio

void setup() {
  size(800, 400);
  imagen = loadImage("op_art_image.jpg");
  imagen.resize(width / 2, height);
  Tamciruclos = width / circulos;
  colorCicurlos = color(255, 0, 0);
}

void draw() {
  background(255);

  image(imagen, 0, 0);

  for (int x = width / 2; x < width; x += Tamciruclos) {
    for (int y = 0; y < height; y += Tamciruclos) {
      float distancia = dist(x + Tamciruclos / 2, y + Tamciruclos / 2, mouseX, mouseY);
      float diametroCiruclo = map(distancia, 0, width / 2, Tamciruclos * 0.2, Tamciruclos * 2);

      color circleColor;
      if (colorRandom == 1) {
        float r = random(255);
        float g = random(255);
        float b = random(255);
        circleColor = color(r, g, b);
      } else {
        float cursorBrillo = brillo(distancia);
        circleColor = color(255 - cursorBrillo);
      }

      fill(circleColor);
      ellipse(x + Tamciruclos / 2, y + Tamciruclos / 2, diametroCiruclo, diametroCiruclo);
    }
  }
}

//// brillo del puntero

float brillo(float distancia) {
  return map(distancia, 0, width / 2, 0, 255);
}

void mousePressed() {
  if (colorRandom == 0) {
    colorRandom = 1; //// activado ////
  } else {
    colorRandom = 0; //// desactivado ////
  }
}
