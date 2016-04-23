using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Stockfish.DataAccess.DbContext;
using Stockfish.DataAccess.Model;
using Stockfish.DataAccess.Repository.Interfaces;
using Stockfish.DataAccess.Repository.Repositories;

namespace Stockfish.Web.Controllers
{
    public class CustomerController : Controller
    {
        private readonly static Context _db = new Context();
        private ICustomerRepository _customerRepository = new CustomerRepository(_db);
        private ICountryRepository _countryRepository = new CountryRepository(_db);
        private IStateRepository _stateRepository = new StateRepository(_db);
        private ISalutationRepository _salutationRepository = new SalutationRepository(_db);

        public CustomerController()
        {
            //_customerRepository = customerRepository;
            //_stateRepository = stateRepository;
            //_countryRepository = countryRepository;
            //_salutationRepository = salutationRepository;
        }

        public CustomerController(ICustomerRepository customerRepository, IStateRepository stateRepository,
            ICountryRepository countryRepository, ISalutationRepository salutationRepository)
        {
            _customerRepository = customerRepository;
            _stateRepository = stateRepository;
            _countryRepository = countryRepository;
            _salutationRepository = salutationRepository;
        }

        // GET: Customer
        public ActionResult Index()
        {
            return View(_customerRepository.GetAll());
        }

        //
        // GET: /Customer/Details/5

        public ActionResult Details(int id = 0)
        {
            var customer = _customerRepository.GetById(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            ViewBag.CountryId = new SelectList(_countryRepository.GetAll().OrderBy(y => y.Name), "Id", "Name");
            ViewBag.StateCode = new SelectList(_stateRepository.GetAll().OrderBy(y => y.Name), "Id", "Code");
            ViewBag.SalutationId = new SelectList(_salutationRepository.GetAll().OrderBy(y => y.Name), "Id", "Name");
            return View(customer);
        }

        // GET: /Customer/Create

        public ActionResult Create()
        {
            ViewBag.SalutationId = new SelectList(_salutationRepository.GetAll().OrderBy(y => y.Name), "Id", "Name");
            ViewBag.StateCode = new SelectList(_stateRepository.GetAll().Where(y=>y.CountryId == 1) .OrderBy(y => y.Name), "Code", "Name");
            ViewBag.CountryId = new SelectList(_countryRepository.GetAll().OrderBy(y => y.Name), "Id", "Name");
            return View();
        }

        //
        // POST: /Customer/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Customer customer)
        {
            if (ModelState.IsValid)
            {
                _customerRepository.Add(customer);
                return RedirectToAction("Index");
            }
            ViewBag.SalutationId = new SelectList(_salutationRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.SalutationId);
            ViewBag.StateCode = new SelectList(_stateRepository.GetAll().Where(y => y.CountryId == Convert.ToInt32(customer.CountryId)).OrderBy(y => y.Name), "Code", "Name", customer.StateCode);
            ViewBag.CountryId = new SelectList(_countryRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.CountryId);

            return View(customer);
        }

        //
        // GET: /Customer/Edit/5

        public ActionResult Edit(int id = 0)
        {
            var customer = _customerRepository.GetById(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
           //
            ViewBag.SalutationId = new SelectList(_salutationRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.SalutationId);
            ViewBag.StateCode = new SelectList(_stateRepository.GetAll().Where(y => y.CountryId == Convert.ToInt32(customer.CountryId)).OrderBy(y => y.Name), "Code", "Name", customer.StateCode);
            ViewBag.CountryId = new SelectList(_countryRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.CountryId);

            return View(customer);
        }

        //
        // POST: /Customer/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Customer customer)
        {
            if (ModelState.IsValid)
            {
                _customerRepository.Update(customer);
                return RedirectToAction("Index");
            }

            ViewBag.SalutationId = new SelectList(_salutationRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.SalutationId);
            ViewBag.StateCode = new SelectList(_stateRepository.GetAll().Where(y => y.CountryId == Convert.ToInt32(customer.CountryId)).OrderBy(y => y.Name), "Code", "Name", customer.StateCode);
            ViewBag.CountryId = new SelectList(_countryRepository.GetAll().OrderBy(y => y.Name), "Id", "Name", customer.CountryId);

            return View(customer);
        }

        //
        // GET: /Customer/Delete/5

        public ActionResult Delete(int id = 0)
        {
            var customer = _customerRepository.GetById(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        //
        // POST: /Customer/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            var customer = _customerRepository.GetById(id);
            _customerRepository.Delete(customer);
            return RedirectToAction("Index");
        }

        public ActionResult GetStateValues(int countryId)
        {
            var states = _stateRepository.GetAll().Where(y => y.CountryId == countryId).OrderBy(y => y.Name);
            var fs = from s in states
                     select new
                     {
                         s.Code,
                         s.Name
                     };
            var retVal = new JsonResult
            {
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
                Data = fs.ToList()
            };
            return retVal;
        }
    }
}