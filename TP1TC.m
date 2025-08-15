IMedida = [22, 20, 19.1, 18.3, 16.9, 13.6, 12, 11.4, 11.3, 10.7]; %en miliamperios
IMedida = IMedida * (1/1000);
VMedida = [0.5, 1, 1.375, 2, 2.5, 3.25, 3.875, 4.5, 4.625, 5]; %en voltios

ResistenciaObtenida = VMedida ./ IMedida

Potencia = IMedida.^2;
Potencia = Potencia .* ResistenciaObtenida;

plot(ResistenciaObtenida,Potencia, "-o", "linewidth", 1.5, "markersize", 6);
grid on;
xlabel("Resistencia R [\Omega]");
ylabel("Potencia [W]");

print("grafico.png","-dpng");
