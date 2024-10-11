from src.mathf import Mathfunc

def test_add():
    """testing add func
    """
    assert Mathfunc.adding(2,3)==5
    assert Mathfunc.adding(-245, 3)==-242


def test_sub():
    """Testing sub func
    """
    assert Mathfunc.subt(5,3)==2
    assert Mathfunc.subt(4,3)==1
    assert Mathfunc.subt(3,3)==0
    assert Mathfunc.subt(2,3)==-1