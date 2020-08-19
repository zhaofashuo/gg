import cn.itcast.common.page.Pagination;
import com.oracle.mapper.ProductMapper;
import com.oracle.pojo.Product;
import com.oracle.pojo.ProductQuery;
import com.oracle.service.ProductService;
import com.oracle.serviceImpl.ProductServiceImpl;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import java.util.List;

@SpringJUnitConfig(locations = "classpath:config/bean.xml")
public class TestUser {
    @Autowired
    private ProductMapper productMapper;
    @Autowired
    private ProductService productService;
    @Test
    public void test(){
        System.out.println("mvn");
    }
    @Test
    public void test2(){
        Pagination page = productService.getAll("", 1, 1);
        List list = page.getList();
        System.out.println(list);




    }
}
