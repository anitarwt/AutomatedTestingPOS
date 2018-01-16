package pospack;


import org.testng.Assert;
import org.testng.annotations.Test;

public class Percobaan {
	@Test

	public	void StartApps(){
		Assert.assertEquals(12, 14);
		//Assert.assertEquals(0, 1);//untuk memberikan nilai umpan pada proses testing, jika berhasil bernilai 25 dan jika gagal bernilai 23
		System.out.println("Hello StartApps");
	}
	@Test(dependsOnMethods="StartApps") 
	//dependOn berguna untuk memberi tanda, bahwa setelah testcase startapps, akan melakukan testcases proseslogin
	public void ProsesLogin() {
		System.out.println("Hello Login");
	}
	
	
	
}
