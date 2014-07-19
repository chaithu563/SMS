using SMS.DAL.Common.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.OData;
using System.Web.OData.Routing;

namespace SMS.DAL.Common.Controllers
{
     [ODataRoutePrefix("Branches")]
    public class CommonOdataController : ApiController
    {

        readonly SMSEntities _db = new SMSEntities();
        // GET api/<controller>
        [EnableQuery(PageSize = 20)]
        [ODataRoute]
        public IHttpActionResult Get()
        {
            return Ok(_db.tblBranches.AsQueryable());
        }
    }
}