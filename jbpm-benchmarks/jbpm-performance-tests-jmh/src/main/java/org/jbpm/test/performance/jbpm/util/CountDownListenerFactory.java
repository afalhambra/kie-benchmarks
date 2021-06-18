package org.jbpm.test.performance.jbpm.util;

import org.jbpm.test.listener.process.ProcessCompletedCountDownProcessEventListener;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class CountDownListenerFactory {

    private static Map<String, ProcessCompletedCountDownProcessEventListener> listeners = new ConcurrentHashMap<>();

    public static ProcessCompletedCountDownProcessEventListener get(String id, int threads) {
        if (listeners.containsKey(id)) {
            return listeners.get(id);
        }
        ProcessCompletedCountDownProcessEventListener listener = new ProcessCompletedCountDownProcessEventListener(threads);
        listeners.put(id, listener);
        return listener;
    }

    public static ProcessCompletedCountDownProcessEventListener getExisting(String id) {
        return listeners.get(id);
    }

    public static ProcessCompletedCountDownProcessEventListener removeExisting(String id) {
        return listeners.remove(id);
    }


    public static void clear() {
        listeners.clear();
    }
}
