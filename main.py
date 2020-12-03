import clingo
from pyswip import Prolog

prolog = Prolog()

tc_atom = False


def on_model(m):
    symboles = m.symbols(shown=True)

    tc = clingo.Function("tc")
    if m.contains(tc):
        print("tc is solvable")
        # prolog.assertz("tc")
    else:
        print("tc is not solvable")


ctl = clingo.Control()
ctl.load("clkb_oberther.lp")
# ctl.load("clkb_graziano.lp")
ctl.load("lc.lp")
ctl.ground([("base", [])])
ctl.solve(on_model=on_model)

# for sol in prolog.query("tc"):
#     print(sol)
