using System;
using System.Collections.Generic;
using System.Text;
using BirdcodeIO.Domain.Entities;

namespace BirdcodeIO.Domain.Interfaces
{
    public interface IRepository<T> where T : BaseEntity 
    {
        void Insert(T obj);
        void Update(T obj);
        void Remove(int id);

        T Select(int id);
        IList<T> SelectAll();
    }
}
