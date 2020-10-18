const express = require("express");
const router = express();
const pool = require("../db");

router.use(express.json());

//Get All
router.get("/", async (req, res) => {
  try {
    const get_all_building = await pool.query(`SELECT *
    FROM building ORDER BY building_id DESC`);
    res.json(get_all_building);
  } catch (error) {
    res.json(error.message);
  }
});

//Create/Insert
router.post("/create/:building", async (req, res) => {
  try {
    const { building_name } = req.body;
    const check_building_query = await pool.query(
      `SELECT COUNT(*)
       FROM building
       WHERE building_name = ($1)`,
      [building_name]
    );
    if (Number(check_building_query.rows[0].count) === 0) {
      const building_query = await pool.query(
        `INSERT INTO building (building_name) 
        VALUES ($1) RETURNING *`,
        [building_name]
      );
      res.json(building_query.rows[0]);
    } else {
      res.status(500).json(building_name + " already exists");
    }
  } catch (error) {
    res.json(error.message);
  }
});

//Get 1 ID
router.get("/:id", async (req, res) => {
  try {
    const { building_id } = req.params;
    const get_one_building = await pool.query(
      `SELECT *
       FROM building
       WHERE building_id = $1`,
      [building_id]
    );
    res.json(get_one_building.rows[0]);
  } catch (error) {
    res.json(error.message);
  }
});

//Update 1 ID
router.put("/update/:building_id", async (req, res) => {
  try {
    const { building_id } = req.params;
    const { building_name } = careq.body;

    const check_building_query = await pool.query(
      `SELECT COUNT(*)
       FROM building
       WHERE building_name = ($1)`,
      [building_name]
    );
    if (Number(check_building_query.rows[0].count) === 0) {
      const update_one_building = await pool.query(
        `UPDATE building
         SET building_name = $1
        WHERE building_id = $2`,
        [building_name, building_id]
      );
      res.json(building_id + " was updated.");
    } else {
      res.status(500).json(building_name + " already exists");
    }
  } catch (error) {
    res.json(error.message);
  }
});

//Delete 1 Building
router.delete("/delete/:building_id", async (req, res) => {
  try {
    const { building_id } = req.params;
    const delete_one_building = await pool.query(
      `DELETE FROM building WHERE building_id = $1`,
      [building_id]
    );
    res.json(building_id + " was deleted.");
  } catch (error) {
    res.json(error.message);
  }
});

module.exports = router;
