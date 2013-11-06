//读入一天的数据并合并
var rdd=sc.textFile("/Users/paul/datamining/dm2011_hangzhou-access_log.2013.10.10.00.59.log.gz")
for (i <- 1 to 23) {
	val sn= if (i>=10 ) ""+i else "0"+i
	val r= sc.textFile("/Users/paul/datamining/dm2011_hangzhou-access_log.2013.10.10."+sn+".59.log.gz")
	rdd=rdd.union(r)
}
//来源为百度的访问
val baidu=rdd.filter(line=>line.contains("dm_referer=http://www.baidu.com"))

//分析UV
val r="""&dm_sid=[0-9a-z]+""".r
val sids=rdd.map(line=>r.findFirstIn(line) match { case Some(s)=>s.split("=")(1) ; case None=>""})
val uv=sids.map(sid=>(sid,1)).reduceByKey((a,b)=>a+b)
