package net.le.config;

import com.alibaba.druid.pool.DruidDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
@PropertySource("classpath:jdbc.properties")
@MapperScan("classpath:net.le.**.dao")
public class MybatisConfig {

    @Value("${mysql.driver}")
    private String driver;
    @Value("${mysql.url}")
    private String url;
    @Value("${mysql.username}")
    private String username;
    @Value("${mysql.password}")
    private String password;


    /**
     * 配置数据源
     * @return
     */
    @Bean(name = "dataSource")
    public DruidDataSource getDataSource() {
        try {
            DruidDataSource dataSource = new DruidDataSource();
            dataSource.setDriverClassName(driver);
            dataSource.setUrl(url);
            dataSource.setUsername(username);
            dataSource.setPassword(password);
            return dataSource;
        } catch (Exception e) {
            return null;
        }
    }

    /**
     *  配置SqlSessionFactory
     * @return
     */
    @Bean
    public SqlSessionFactoryBean setSqlSessionFactory (DruidDataSource dataSource) {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource);
        PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
//        sqlSessionFactoryBean.setMapperLocations(new Resource[] { resolver.getResource("net/le/**/dao/mapping/*.xml")});
//        sqlSessionFactoryBean.setConfigLocation(resolver.getResource("classpath:mybatis-config.xml"));
        return sqlSessionFactoryBean;
    }
}
