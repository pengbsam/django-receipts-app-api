from django.test import TestCase

from app.calc import add, substract


class CalcTests(TestCase):
    def test_add_numbers(self):
        """Test 2 numbers added correctly """
        self.assertEqual(add(3,8), 11)
    
    def test_substract_numbers(self):
        """ test 2 number subscript correctly """
        self.assertEqual(substract(8,3),5)