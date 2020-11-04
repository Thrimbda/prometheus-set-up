#!/usr/bin/env -S python3
'''
script for map prometheus config to k8s configMap.
'''
from __future__ import annotations

import argparse
import sys
from typing import List, Iterable
from pathlib import Path


indentation = ' ' * 4
invariant = """apiVersion: v1
kind: ConfigMap
metadata:
  name: prometheus-config
  namespace: prometheus-system
data:
  prometheus.yaml: |
"""


def arg_parser(args: List[str]) -> argparse.Namespace:
    """
    CLI argument parser
    """
    parser = argparse.ArgumentParser(description='This is a script mapping prometheus config file to K8s configMap',
                                     prog='configMap maker',
                                     epilog='enjoy')

    parser.add_argument('promconf',
                        metavar='<prometheus_config_path>')
    parser.add_argument('configmap',
                        metavar='<k8s_configmap_path>')

    return parser.parse_args(args)


def make_config(prom_conf_path: Path) -> str:
    prom_conf_lines: Iterable[str]
    with prom_conf_path.open('r') as conf_file:
        prom_conf_lines = conf_file.readlines()

    prom_conf = ''.join(
        f'{indentation}{line}' if line.strip() else '\n'
        for line in prom_conf_lines
    )

    result = f'{invariant}{prom_conf}'
    return result


def main() -> None:
    '''
    main ctl function
    '''
    args: argparse.Namespace = arg_parser(sys.argv[1:])
    prom_conf_path = Path(args.promconf)
    configmap_path = Path(args.configmap)

    configmap = make_config(prom_conf_path)

    with configmap_path.open('w') as configmap_file:
        configmap_file.write(configmap)


if __name__ == '__main__':
    main()
