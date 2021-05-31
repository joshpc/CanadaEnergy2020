import unittest
import numpy as np

from util.energy_util import *

class EnergyUtilTestCase(unittest.TestCase):
  def test_butane_to_pj(self):
    self.assertEqual(butane_to_pj(0), 0)
    self.assertAlmostEqual(butane_to_pj(1), 0.00002862)
    self.assertAlmostEqual(butane_to_pj(100), 0.002862)

  def test_coal_to_pj(self):
    self.assertEqual(coal_to_pj(0), 0)
    self.assertAlmostEqual(coal_to_pj(1), 0.00002760)
    self.assertAlmostEqual(coal_to_pj(100), 0.002760)

  def test_light_crude_oil_to_pj(self):
    self.assertEqual(light_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(light_crude_oil_to_pj(1), 0.00003841)
    self.assertAlmostEqual(light_crude_oil_to_pj(100), 0.003841)

  def test_heavy_crude_oil_to_pj(self):
    self.assertEqual(heavy_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(heavy_crude_oil_to_pj(1), 0.00004090)
    self.assertAlmostEqual(heavy_crude_oil_to_pj(100), 0.004090)

  def test_pentanes_plus_crude_oil_to_pj(self):
    self.assertEqual(pentanes_plus_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(pentanes_plus_crude_oil_to_pj(1), 0.00003517)
    self.assertAlmostEqual(pentanes_plus_crude_oil_to_pj(100), 0.003517)

  def test_synthetic_crude_oil_to_pj(self):
    self.assertEqual(synthetic_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(synthetic_crude_oil_to_pj(1), 0.00003940)
    self.assertAlmostEqual(synthetic_crude_oil_to_pj(100), 0.003940)

  def test_heavy_crude_oil_to_pj(self):
    self.assertEqual(heavy_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(heavy_crude_oil_to_pj(1), 0.00004090)
    self.assertAlmostEqual(heavy_crude_oil_to_pj(100), 0.004090)

  def test_bitumen_crude_oil_to_pj(self):
    self.assertEqual(bitumen_crude_oil_to_pj(0), 0)
    self.assertAlmostEqual(bitumen_crude_oil_to_pj(1), 0.00004280)
    self.assertAlmostEqual(bitumen_crude_oil_to_pj(100), 0.004280)

  def test_ethane_to_pj(self):
    self.assertEqual(ethane_to_pj(0), 0)
    self.assertAlmostEqual(ethane_to_pj(1), 0.00001836)
    self.assertAlmostEqual(ethane_to_pj(100), 0.001836)

  def test_natural_gas_to_pj(self):
    self.assertEqual(natural_gas_to_pj(0), 0)
    self.assertAlmostEqual(natural_gas_to_pj(1), 0.0000000373)
    self.assertAlmostEqual(natural_gas_to_pj(100), 0.00000373)

  def test_pentanes_to_pj(self):
    self.assertEqual(pentanes_to_pj(0), 0)
    self.assertAlmostEqual(pentanes_to_pj(1), 0.00003517)
    self.assertAlmostEqual(pentanes_to_pj(100), 0.003517)

  def test_propane_to_pj(self):
    self.assertEqual(propane_to_pj(0), 0)
    self.assertAlmostEqual(propane_to_pj(1), 0.00002553)
    self.assertAlmostEqual(propane_to_pj(100), 0.002553)

  def test_uranium_to_pj(self):
    self.assertEqual(uranium_to_pj(0), 0)
    self.assertAlmostEqual(uranium_to_pj(1), 0.665)
    self.assertAlmostEqual(uranium_to_pj(100), 66.5)

  def test_gwh_to_pj(self):
    self.assertEqual(gwh_to_pj(0), 0)
    self.assertAlmostEqual(gwh_to_pj(1), 0.0036)
    self.assertAlmostEqual(gwh_to_pj(100), 0.36)
