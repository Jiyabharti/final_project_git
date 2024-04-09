from flask import render_template

from application import app


@app.route('/')
@app.route('/home')
def home():
    return render_template('1_home.html', title='Home')


@app.route('/about')
def about():
    return render_template('2_about.html', title="About Us")


@app.route('/child_dashboard')
def child_dashboard():
    return render_template('13_child_dashboard.html', title='Child Dashboard')


@app.route('/parent_dashboard')
def parent_dashboard():
    return render_template('12_parent_dashboard.html', title='Parent/Guardian Dashboard')


@app.route('/education')
def education():
    return render_template('3_education.html', title='Education Support')


@app.route('/parent_education')
def parent_education():
    return render_template('3a_parenteducation.html', title='Parent Education Support')


@app.route('/child_education')
def child_education():
    return render_template('15_child_education.html', title='Child Education Support')


@app.route('/wellness')
def wellness():
    return render_template('4_wellness.html', title='Wellness Support')


@app.route('/parent_wellness')
def parent_wellness():
    return render_template('4a_parentwellness.html', title='Wellness Support Information for your child')



@app.route('/child_wellness')
def child_wellness_route():
    return render_template('9_wellness.html', title='Children Wellness Support')


@app.route('/health')
def health():
    return render_template('5_health.html', title='Health Support')


@app.route('/parent_health')
def parent_health_route():
    return render_template('5a_parenthealth.html', title='Health Support Information for your child')


@app.route('/child_health')
def child_health_route():
    return render_template('11_child_health.html', title='Children Health Support')


@app.route('/volunteer')
def volunteer():
    return render_template('16_volunteer.html', title='Volunteer With Us')


@app.route('/parent_volunteer_search')
def parent_volunteer_search():
    return render_template('17_parent_volunteer_search.html', title='Find Volunteers')


@app.route('/login')
def login():
    return render_template('6_login.html', title='User Log In')


@app.route('/register')
def register():
    return render_template('7_register.html', title='User Registration')


@app.route('/terms')
def terms():
    return render_template('terms-privacy-faq.html', id="terms")


@app.route('/privacy')
def privacy():
    return render_template('terms-privacy-faq.html', id="privacy")


@app.route('/faq')
def faq():
    return render_template('terms-privacy-faq.html', id="faq")
