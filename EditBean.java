package pack;

public class EditBean
{
	private String ename;
	private String edept;
	private String eph;
	private String eadd;
	private String epc;
	private String username;
	private String empid;
	
	public EditBean(){}
	
	public EditBean(String ename,String edept,String eph,String eadd,String epc)
	{
		this.ename=ename;
		this.edept=edept;
		this.eph= eph;
		this.eadd= eadd;
		this.epc= epc;
	}
	public String getUsername() 
	{
		return username;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getempid() 
	{
		return username;
	}

	public void setempid(String empid)
	{
		this.empid = empid;
	}

	public String getEmpname()
	{
		return ename;
	}

	public void setEmpname(String ename) 
	{
		this.ename = ename;
	}

	public String getedept()
	{
		return edept;
	}

	public void setedept(String edept)
	{
		this.edept = edept;
	}

	public String geteph()
	{
		return eph;
	}

	public void seteph(String eph)
	{
		this.eph = eph;
	}

	public String geteadd()
	{
		return eadd;
	}

	public void seteadd(String eadd)
	{
		this.eadd = eadd;
	}
    
	public String getepc()
	{
		return epc;
	}

	public void setepc(String epc)
	{
		this.epc = epc;
	}

}
