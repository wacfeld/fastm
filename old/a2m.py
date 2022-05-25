import asciitomathml.asciitomathml
the_string = 'S = sum_(n = 0)^oo (-1)^n ((6n)!(k_2 + nk_1))/(n!^3(3n)!(8k_4k_5)^n)'
math_obj =  asciitomathml.asciitomathml.AsciiMathML()
math_obj.parse_string(the_string)
print(math_obj.to_xml_string())
