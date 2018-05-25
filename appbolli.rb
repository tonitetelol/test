@ho = "20"
@mo = "37"
@so = "03"
objetivo = @ho + ":" + @mo + ":" + @so

def diferencia()
hi = Time.now.strftime("%H")
mi = Time.now.strftime("%M")
si = Time.now.strftime("%S")

sdif = @so.to_i - si.to_i
mdif = @mo.to_i - mi.to_i
hdif = @ho.to_i - hi.to_i

if sdif < 0
mdif = mdif - 1
sdif = sdif + 60
end
if mdif < 0
hdif = hdif - 1
mdif = mdif + 60
end

if hdif < 10
hora = "0" + hdif.to_s
else
hora = hdif.to_s
end
if mdif < 10
minuto = "0" + mdif.to_s
else 
minuto = mdif.to_s
end
if sdif < 10
segundo = "0" + sdif.to_s
else
segundo = sdif.to_s
end

puts hora + ":" + minuto + ":" + segundo
end
puts "El coche llegara a las " + objetivo
#puts Time.new.strftime("%H:%M:%S")
puts ""
puts "Tiempo hasta la recogida:"
diferencia()
    