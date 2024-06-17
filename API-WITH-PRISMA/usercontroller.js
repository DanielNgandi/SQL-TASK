// userController.js

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const getAllUsers = async (req, res) => {
  try {
    const allUsers = await prisma.user.findMany();
    res.json(allUsers);
  } catch (error) {
    console.error("Error fetching users", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const createUser = async (req, res) => {
  try {
    const newUser = await prisma.user.create({ data: req.body });
    res.json(newUser);
  } catch (error) {
    console.error("Error creating user", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const updateUser = async (req, res) => {
  const id = req.params.id;
  const newAge = req.body.age;

  try {
    const updatedUser = await prisma.user.update({
      where: { id: parseInt(id) },
      data: { age: newAge },
    });
    res.json(updatedUser);
  } catch (error) {
    console.error("Error updating user", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const deleteUser = async (req, res) => {
  const id = req.params.id;

  try {
    const deletedUser = await prisma.user.delete({
      where: { id: parseInt(id) },
    });
    res.json(deletedUser);
  } catch (error) {
    console.error("Error deleting user", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

module.exports = {getAllUsers,createUser,updateUser,deleteUser,};
