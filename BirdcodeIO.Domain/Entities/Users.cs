using System;
using System.Collections.Generic;
using System.Text;

namespace BirdcodeIO.Domain.Entities
{
    class User : BaseEntity
    {
        public string Name { get; set; }
        public int BirthDay { get; set; }
        public int Cpf { get; set; }
    }
}
