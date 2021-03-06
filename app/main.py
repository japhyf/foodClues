import functools
import sys
from flask import (
    Blueprint, flash, g, redirect, render_template, request, session, url_for, json, jsonify
)
from werkzeug.security import check_password_hash, generate_password_hash

from app.db import get_db

bp = Blueprint('main', __name__, url_prefix='/main')


@bp.route('/home')
def home():
    db = get_db()
    data = db.execute(
        'SELECT * FROM Food'
    ).fetchall()
    cursor = db.execute('select * from Food')
    header = [x[0] for x in cursor.description]
    obj = {}
    for row in data:
        obj[row["Address"]] = dict(zip(header,row))
    y = json.dumps(obj)
    return render_template('main/home.html', data=y)
