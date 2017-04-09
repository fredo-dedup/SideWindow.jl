
reload("Rotolo")
using PhantomJS

include("../src/compile.jl")

compile(joinpath(dirname(@__FILE__), "../test/dummy-page.jl"),
        "/tmp/dummy.pdf")

module Try
end

module Try

Main.compile(joinpath(dirname(@__FILE__), "../test/dummy-page.jl"),
        "/tmp/dummy.pdf")


end


reload("Rotolo")

module Try
end

module Try
using Rotolo

using Base.Markdown

@redirect Float32 Base.Markdown.MD

Rotolo.sessions

@session d1


Float32(45)
"abcd" |> Rotolo.style("background-color:lightpink")

style("abcd", "background-color:lightpink")
"abcd" |> *("xyz")

theme1 = "display:flex;flex-wrap:wrap;width:300px"

@container flex2 style => "display:flex;flex-wrap:wrap;width:300px"

style("abcd", "padding:10px;")



cs = Rotolo.currentSession
function xplore(ct, level=0)
  println(" "^level, ct.name, " ($(ct.nid))")
  for c in ct.subcontainers
    xplore(c, level+2)
  end
end

xplore(cs.root_container)

@container abcd
xplore(cs.root_container)

@container cyz
xplore(cs.root_container)

@container
xplore(cs.root_container)

Rotolo.@container abcd.yo
xplore(cs.root_container)

md"test"
Float32(123)

Rotolo.@container abcd.yourk style=>"font-color:red"
xplore(cs.root_container)

md"test"


using DataFrames
@redirect DataFrame
DataFrames.head(Main.comp)



Rotolo.unfold(:(abcd.yo))

macro test(arg)
  dump(arg)
  println(Rotolo.unfold(arg))
end

@test abcd
@test abcd.youi.yo456

#################################################################################

Rotolo._send(Rotolo.currentSession, 0,
             "load",
             Dict{Symbol,Any}(:assetname => "katex",
                              # :assetpath => "D:/frtestar/.julia/v0.5/Rotolo/client/katex/katex.js",
                              :assetpath => "/home/fred/.julia/v0.5/Rotolo/client/katex/katex.js")
            )

Rotolo.send("append",
     Dict(:newnid => Rotolo.getnid(),
          :compname => "katex",
          :params => Dict(:expr => "x^2+y_x=a")))

###############################

Rotolo._send(Rotolo.currentSession, 0,
             "load",
             Dict{Symbol,Any}(:assetname => "vegalite",
            #  :assetpath => "D:/frtestar/.julia/v0.5/Rotolo/client/vegalite/vegalite.js")
             :assetpath => "/home/fred/.julia/v0.5/Rotolo/client/VegaLite/vegalite.js")
            )

Rotolo.send("append",
     Dict(:newnid => Rotolo.getnid(),
          :compname => "vegalite",
          :params => Dict(:test => "abcd")))

####################


Rotolo._send(Rotolo.currentSession, 0,
             "load",
             Dict{Symbol,Any}(:assetname => "katex",
                              # :assetpath => "D:/frtestar/.julia/v0.5/Rotolo/client/katex/katex.js",
                              :assetpath => "/home/fred/.julia/v0.5/Rotolo/client/katex/katex.js")
            )

Rotolo.send("append",
     Dict(:newnid => Rotolo.getnid(),
          :compname => "katex",
          :params => Dict(:expr => "x^2+y_x=a")))










Rotolo._send(Rotolo.currentSession, 0,
             "load", Dict{Symbol,Any}(:assetname => "vegalite",
                          :assetpath => "../vegalite.js"))

D:/frtestar/.julia/v0.5/Rotolo/client/katex/ka
D:\frtestar\devl\paper-client\dist


Rotolo.send("append",
     Dict(:newnid => Rotolo.getnid(),
          :compname => "vegalite",
          :params => Dict(:expr => "x^2+y_x=a")))



dump(:( ~test ))


456.4
Float32(456.54)

# import Media, Atom
# methods(Media.render, (Atom.Editor, Any))

md"""
  markdown Text
  # titleqsdqsd

  qsdfdf
  - qsdfgqdg
  - dfgqdrg

  ```
  code_llvm
  ```

  text *text*  qsdf  **qdfgqf**
  """



using Base.Markdown

str = md"test **test** test"
typeof(str)
methodswith(Markdown.MD)

type Abcd
  x::String
end

Abcd("test")

show(io::IO, ::MIME"text/plain",x::Abcd) = show(io, "Abcd : $(x.x)")

function show(io::IO, x::Abcd)
  show(io, "Abcd : $(x.x)")
end

show(Abcd("testtest"))

end

############################################################

source = IOBuffer("ancd")

mktempdir() do tdir
  println(tdir)
  htmlpath = joinpath(tdir, randstring() * ".html")
  open(io -> write(io, read(source)), htmlpath, "w")
  println(read(htmlpath))
end


  # source = IOBuffer(read("c:/temp/vegalite.html"))




reload("PhantomJS")

module Try
end


module Try

using PhantomJS
using VegaLite

ts = sort(rand(10))
ys = Float64[ rand()*0.1 + cos(x) for x in ts]

v = data_values(time=ts, res=ys) +    # add the data vectors & assign to symbols 'time' and 'res'
      mark_line() +                   # mark type = line
      encoding_x_quant(:time) +       # bind x dimension to :time, quantitative scale
      encoding_y_quant(:res) ; nothing

pio = IOBuffer()
VegaLite.writehtml(pio, v)
position(pio)
seekstart(pio)

pngdata = renderhtml(pio)

open(io -> write(io, pngdata), "c:/temp/result.png", "w")

tmppath = "c:/temp/vegalite.html"
open(io -> VegaLite.writehtml(io, v), tmppath, "w")





exepath = joinpath(Pkg.dir("Wkhtmltox"), "deps/src/bin")
run(`$exepath/wkhtmltopdf c:/temp/example.html c:/temp/example.pdf`)

run(`$exepath/wkhtmltopdf -H`)

pdf_init(1)
ps = PdfSettings("out" => "c:/temp/example.pdf")

os = PdfObject("page" => "c:/temp/example.html")
os["web.printMediaType"] = "true"
os["web.printMediaType"]

conv = PdfConverter(ps, os) # pass the pdf settings and source settings
run(conv)

conv = nothing
pdf_deinit()

end
