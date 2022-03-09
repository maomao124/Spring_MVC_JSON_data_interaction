package mao.spring_mvc_json_data_interaction;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Project name(项目名称)：Spring_MVC_JSON_data_interaction
 * Package(包名): mao.spring_mvc_json_data_interaction
 * Class(类名): MyController
 * Author(作者）: mao
 * Author QQ：1296193245
 * GitHub：https://github.com/maomao124/
 * Date(创建日期)： 2022/3/9
 * Time(创建时间)： 21:03
 * Version(版本): 1.0
 * Description(描述)： 无
 */

@Controller
public class MyController
{
    @RequestMapping("/testJson")
    @ResponseBody
    public User testJson(@RequestBody User user)
    {
        // 打印接收的 JSON数据
        System.out.println("name=" + user.getName() + ",password=" + user.getPassword() + ",age=" + user.getAge());
        // 返回JSON格式的响应
        return user;
    }
}
