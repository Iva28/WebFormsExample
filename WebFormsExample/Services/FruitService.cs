using System.Collections.Generic;
using System.Linq;

namespace WebFormsExample.Services
{
    public class FruitService
    {
        static private List<Fruit> fruits;

        static FruitService()
        {
            fruits = new List<Fruit>()
            {
                new Fruit(){Id = 1, Title = "Apple", Price = 1.42},
                new Fruit(){Id = 2, Title = "Orange", Price = 2.05},
                new Fruit(){Id = 3, Title = "Avocado", Price = 6.95}
            };
        }

        public List<Fruit> GetFruits()
        {
            return fruits;
        }

        public void Add(Fruit fruit)
        {
            fruit.Id = fruits.Max(f => f.Id) + 1;
            fruits.Add(fruit);
        }

        public void Remove(int id)
        {
            fruits.Remove(fruits.Find(f => f.Id == id));
        }
    }
}