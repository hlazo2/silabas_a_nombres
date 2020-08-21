function textTotable(stext)
        if sep == nil then
                sep = "%a+"
        end
        local t={}
        for str in string.gmatch(stext, sep) do
                table.insert(t, str)
        end
        return t
end

function silabsToWord(numSilabs)
  allSilabs=#sibTable
  for x=1,numSilabs do
    rWord= rWord..sibTable[love.math.random(1, allSilabs)]
  end
end
function love.load()
  randomNumber = love.math.random(1, 100)
  content, s = love.filesystem.read("silabas01.txt")
  sibTable= textTotable(content)
  fMessage="Test"
  numSil={"1","2", "3", "4"}
  rWord=""
end

function love.draw()
   love.graphics.print("Escriba el numero de silabas (2,3,4)", 50, 300)
   love.graphics.print(fMessage, 50,350)
   love.graphics.print("La palabra es: "..rWord, 50,400)
end
function love.update(dt)
  
end

function love.keypressed(key)
   for i,v in ipairs(numSil) do
      if key == v then
        fMessage = numSil[i].." silabes" 
        rWord = ""
        silabsToWord(v)
        break
      else
        fMessage = key.." not valid"
      end
      
      
    end
  
end
