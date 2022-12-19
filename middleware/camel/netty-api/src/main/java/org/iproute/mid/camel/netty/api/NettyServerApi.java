package org.iproute.mid.camel.netty.api;

import org.iproute.mid.camel.netty.model.ServerInfo;

/**
 * NettyApi
 *
 * @author zhuzhenjie
 * @since 2022/12/19
 */
public interface NettyServerApi {

    boolean start(ServerInfo serverInfo);

    boolean stop(ServerInfo serverInfo);
}
