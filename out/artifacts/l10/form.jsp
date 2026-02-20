<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/20/2026
  Time: 2:00 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>⚡</text></svg>">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            width: 100%;
            overflow-x: hidden;
        }

        body {
            background: #000000;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', system-ui, sans-serif;
            padding: 2rem 1rem;
        }

        .form-container {
            background: #0a0a0a;
            border: 1px solid #1a1a1a;
            padding: 3rem 2.5rem;
            max-width: 600px;
            width: 100%;
        }

        .form-title {
            color: #ffffff;
            font-size: 1.5rem;
            font-weight: 400;
            margin-bottom: 3rem;
            text-transform: uppercase;
            letter-spacing: 3px;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-row {
            display: grid;
            grid-template-columns: 140px 1fr;
            align-items: center;
            gap: 2rem;
        }

        .form-label {
            color: #666;
            font-size: 0.85rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .form-control {
            width: 100%;
            padding: 0.9rem 0;
            font-size: 1rem;
            border: none;
            border-bottom: 1px solid #222;
            background: #000000;
            color: #ffffff;
            transition: border-color 0.2s ease;
            font-weight: 400;
        }

        .form-control:focus {
            outline: none;
            border-bottom-color: #4a9eff;
            background: #000000;
        }

        select.form-control {
            cursor: pointer;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: #000000;
            background-image: url("data:image/svg+xml,%3Csvg width='10' height='6' viewBox='0 0 10 6' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M1 1L5 5L9 1' stroke='%23666' stroke-width='1.5'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 0 center;
            padding-right: 1.5rem;
        }

        select.form-control option {
            background: #000000;
            color: #ffffff;
        }

        input.form-control::placeholder {
            color: #333;
        }

        .form-range {
            width: 100%;
            height: 2px;
            background: #222;
            outline: none;
            -webkit-appearance: none;
            appearance: none;
        }

        .form-range::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 18px;
            height: 18px;
            background: #4a9eff;
            cursor: pointer;
            border-radius: 50%;
            transition: all 0.2s ease;
        }

        .form-range::-webkit-slider-thumb:hover {
            background: #5da9ff;
            transform: scale(1.2);
        }

        .form-range::-moz-range-thumb {
            width: 18px;
            height: 18px;
            background: #4a9eff;
            cursor: pointer;
            border-radius: 50%;
            border: none;
            transition: all 0.2s ease;
        }

        .form-range::-moz-range-thumb:hover {
            background: #5da9ff;
            transform: scale(1.2);
        }

        .form-range::-moz-range-track {
            background: #222;
            height: 2px;
        }

        .btn-submit {
            background: #4a9eff;
            color: #000000;
            font-weight: 600;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            padding: 1.1rem 3.5rem;
            border: none;
            cursor: pointer;
            transition: all 0.15s ease;
            display: block;
            margin: 3rem auto 0;
        }

        .btn-submit:hover {
            background: #5da9ff;
        }

        .btn-submit:active {
            transform: scale(0.98);
        }

        .btn-submit.pressed {
            animation: flash 0.3s ease;
        }

        @keyframes flash {
            0%, 100% { background: #4a9eff; }
            50% { background: #ffffff; }
        }

        @media (max-width: 600px) {
            .form-row {
                grid-template-columns: 1fr;
                gap: 0.5rem;
            }

            .form-container {
                padding: 2rem 1.5rem;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1 class="form-title">REGISTER</h1>

    <form id="studentForm" method="post">

        <div class="form-group">
            <div class="form-row">
                <label class="form-label">Major</label>
                <select class="form-control" name="major" required>
                    <option value="" selected>—</option>
                    <option value="entrepreneurship">Entrepreneurship</option>
                    <option value="software-engineering">Software Engineering</option>
                    <option value="mechanical-engineering">Mechanical Engineering</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <label class="form-label">Country</label>
                <select class="form-control" name="country" required>
                    <option value="" selected>—</option>
                    <option value="usa">United States</option>
                    <option value="china">China</option>
                    <option value="japan">Japan</option>
                    <option value="germany">Germany</option>
                    <option value="india">India</option>
                    <option value="uzbekistan">Uzbekistan</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <label class="form-label">Age</label>
                <div style="display: flex; align-items: center; gap: 1rem;">
                    <input type="range" class="form-range" name="age" id="ageRange"
                           min="19" max="27" value="23" required>
                    <span id="ageValue" style="color: #4a9eff; font-size: 1.2rem; font-weight: 600; min-width: 35px;">23</span>
                </div>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <label class="form-label">Gender</label>
                <select class="form-control" name="gender" required>
                    <option value="" selected>—</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <div class="form-row">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name"
                       placeholder="Full name" required>
            </div>
        </div>

        <button type="submit" class="btn-submit" id="submitBtn">SUBMIT</button>

    </form>
</div>

<script>
    const submitBtn = document.getElementById('submitBtn');
    const form = document.getElementById('studentForm');
    const ageRange = document.getElementById('ageRange');
    const ageValue = document.getElementById('ageValue');

    // Update age display when slider moves
    ageRange.addEventListener('input', function() {
        ageValue.textContent = this.value;
    });

    submitBtn.addEventListener('click', function() {
        submitBtn.classList.add('pressed');
        setTimeout(() => submitBtn.classList.remove('pressed'), 300);
    });

    form.addEventListener('submit', function(e) {
        e.preventDefault();
        submitBtn.classList.add('pressed');
        setTimeout(() => form.submit(), 200);
    });
</script>

</body>
</html>
