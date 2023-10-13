import unittest
import assignment4

class TestCountPairs(unittest.TestCase):
    def test_pairs_exist(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1,2,3,4,5], 6), 2)
    def test_no_pairs_exist(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1,2,3,4,5], 10), 0)
    def test_empty_list(self):
        self.assertEqual(assignment4.count_pairs_with_sum([], 5), 0)
    def test_single_element(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1], 1), 0)
    def test_negative_numbers(self):
        self.assertEqual(assignment4.count_pairs_with_sum([-1, -2, 1, 2 , 3], 0), 2)
    def test_duplicates(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1,2,2,3,3,4], 5), 3)
    def test_large_numbers(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1000, 2000, 3000], 3000), 1)
    def test_target_is_zero(self):
        self.assertEqual(assignment4.count_pairs_with_sum([1,2,3,4,5], 0), 0)
if __name__ == '__main__':
    unittest.main()