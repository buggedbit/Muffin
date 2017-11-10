<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="m" tagdir="/WEB-INF/tags" %>
<m:base>
    <jsp:attribute name="title">Movie Editor</jsp:attribute>
    <jsp:attribute name="css">
        <style>
            input {
                border: none !important;
                box-shadow: none !important;
                outline: none !important;
                color: black !important;
                font-size: x-large !important;
                margin-left: 5% !important;
                width: 80% !important;
                margin-right: 5% !important;
                margin-bottom: 0 !important;
            }

            input:focus {
                border: none !important;
                box-shadow: none !important;
                outline: 1px solid black !important;
            }
        </style>
    </jsp:attribute>
    <jsp:body>
        <script type="text/babel">
            let truncate = function (string, maxLength) {
                let label;
                if (string.length > maxLength) {
                    label = string.substring(0, maxLength) + '...';
                }
                else {
                    label = string;
                }
                return label;
            };

            let isTheatreValid = function (screenNo) {

                if (screenNo === ''
                    || isNaN(Number(screenNo))) {
                    Materialize.toast('Invalid Screen Number!', 3000);
                    return false;
                }

                return true;
            };


            /**
             * @propFunctions: onDeleteClick, onEditClick
             * */
            let TheatreItem = React.createClass({
                getInitialState: function () {

                    return {
                        inReadMode: true,
                    }
                },
                readModeRender: function () {


                    return (
                            <tr title={this.props.screenNo}
                                onDoubleClick={() => this.setState(() => {
                                    return {inReadMode: false}
                                })}>

                                <td>{this.props.screenNo}</td>


                                <td>
                                    <a href="#"
                                       onClick={(e) => {
                                           this.props.onDeleteClick(this.props.id)
                                       }}
                                       className="btn-floating waves-effect waves-light red">
                                        <i className="material-icons">remove</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="#"
                                       onClick={(e) => {
                                           this.setState(()
                                       =>
                                           {
                                               return {inReadMode: false}
                                           }
                                       )
                                       }}
                                       className="btn-floating waves-effect waves-light yellow darken-4">
                                        <i className="material-icons">edit</i>
                                    </a>
                                </td>
                            </tr>
                    );
                },
                writeModeRender: function () {
                    return (
                            <tr title={this.props.name}
                                onDoubleClick={() =>
                                    this.setState(() => {
                                        return {inReadMode: true}
                                    })
                                }>

                                <td>
                                    <input type="number"
                                           ref="screenNo"
                                           name="screenNo"
                                           placeholder="Screen Number"
                                           defaultValue={this.props.screenNo}/>


                                </td>
                                <td>
                                    <a href="#"
                                       onClick={(e) => {
                                           this.props.onEditClick(this.props.id, this.refs.name.value, this.refs.durationInMinutes.value);
                                           this.setState(()
                                       =>
                                           {
                                               return {inReadMode: true}
                                           }
                                       )
                                           ;
                                       }}
                                       className="btn-floating waves-effect waves-light yellow darken-4">
                                        <i className="material-icons">send</i>
                                    </a>
                                </td>
                                <td>
                                    <a href="#"
                                       onClick={(e) => {
                                           this.setState(()
                                       =>
                                           {
                                               return {inReadMode: true}
                                           }
                                       )
                                       }}
                                       className="btn-floating waves-effect waves-light black">
                                        <i className="material-icons">cancel</i>
                                    </a>
                                </td>
                            </tr>
                    );
                },
                render: function () {
                    return this.state.inReadMode ? this.readModeRender() : this.writeModeRender();
                }
            });

            let TheatreEditor = React.createClass({
                getInitialState: function () {

                    return {
                        cinemaBuildingId: ${requestScope.cinemaBuildingId},
                        theatres: [
                            <jstl:forEach items="${requestScope.theatreList}" var="theatre">
                            {
                                id: ${theatre.id},
                                cinemaBuildingId: ${theatre.cinemaBuildingId},
                                screenNo: ${theatre.screenNo},

                            },
                            </jstl:forEach>
                        ],
                    }
                },
                createTheatre: function () {
                    let self = this;
                    // validation
                    if (!isTheatreValid(this.refs.screenNo.value)) {
                        return;
                    }
                    // ajax call

                    $.ajax({
                        url: '${pageContext.request.contextPath}/theatre/create',
                        type: 'GET',
                        data: {cinemaBuildingId: this.state.cinemaBuildingId, screenNo: this.refs.screenNo.value},
                        success: function (r) {
                            let json = JSON.parse(r);
                            if (json.status === -1) {
                                Materialize.toast(json.error, 2000);
                            }
                            else {
                                let data = json.data;
                                self.setState((prevState, props) => {
                                    prevState.theatres.push(data);
                                    return prevState;
                                });
                                $(self.refs.createTheatreForm).find('input').val('');
                            }
                        },
                        error: function (data) {
                            Materialize.toast('Server Error', 2000);
                        }
                    });
                },
                <%--editTheatre: function (id, name, durationInMinutes) {--%>
                <%--let self = this;--%>
                <%--// validation--%>
                <%--if (!isMovieValid(name, durationInMinutes)) {--%>
                <%--return;--%>
                <%--}--%>
                <%--// ajax call--%>
                <%--$.ajax({--%>
                <%--url: '${pageContext.request.contextPath}/movie/update',--%>
                <%--type: 'GET',--%>
                <%--data: {id: id, name: name, durationInMinutes: durationInMinutes},--%>
                <%--success: function (r) {--%>
                <%--let json = JSON.parse(r);--%>
                <%--if (json.status === -1) {--%>
                <%--Materialize.toast(json.error, 2000);--%>
                <%--}--%>
                <%--else {--%>
                <%--let data = json.data;--%>
                <%--self.setState((prevState, props) => {--%>
                <%--let updateIndex = -1;--%>
                <%--prevState.movies.forEach((movie, i) => {--%>
                <%--if (movie.id === id) {--%>
                <%--updateIndex = i;--%>
                <%--}--%>
                <%--});--%>
                <%--prevState.movies.splice(updateIndex, 1, data);--%>
                <%--return prevState;--%>
                <%--});--%>
                <%--self.forceUpdate();--%>
                <%--}--%>
                <%--},--%>
                <%--error: function (data) {--%>
                <%--Materialize.toast('Server Error', 2000);--%>
                <%--}--%>
                <%--});--%>
                <%--},--%>
                deleteTheatre: function (id) {
                    let self = this;
                    $.ajax({
                        url: '${pageContext.request.contextPath}/theatre/delete',
                        type: 'GET',
                        data: {id: id},
                        success: function (r) {
                            let json = JSON.parse(r);
                            if (json.status === -1) {
                                Materialize.toast(json.error, 2000);
                            }
                            else {
                                self.setState((prevState, props) => {
                                    let delIndex = -1;
                                    prevState.theatres.forEach((theatre, i) => {
                                        if (theatre.id === id) {
                                            delIndex = i;
                                        }
                                    });
                                    prevState.theatres.splice(delIndex, 1);
                                    return prevState;
                                });
                            }
                        },
                        error: function (data) {
                            Materialize.toast('Server Error', 2000);
                        }
                    });
                },
                render: function () {
                    return (
                            <table className="highlight centered striped">
                                <thead>
                                <tr>
                                    <th>Screen No</th>


                                </tr>
                                </thead>
                                <tbody>
                                <tr className="create-theatre-form"
                                    ref="createTheatreForm">

                                    <td>
                                        <input type="number"
                                               ref="screenNo"
                                               name="screenNo"
                                               placeholder="Screen Number"
                                               defaultValue=""/>
                                    </td>


                                    <td>
                                    </td>
                                    <td>
                                        <button onClick={this.createTheatre}
                                                className="btn-floating waves-effect waves-light green">
                                            <i className="material-icons">add</i>
                                        </button>
                                    </td>
                                </tr>
                                {
                                    this.state.theatres.map(m => {
                                        return <TheatreItem key={m.id}
                                                            id={m.id}
                                                            screenNo={m.screenNo}
                                                            onDeleteClick={this.deleteTheatre}
                                                            onEditClick={this.editTheatre}/>;
                                    })
                                }
                                </tbody>
                            </table>
                    );
                }
            });

            ReactDOM.render(<TheatreEditor/>, document.getElementById('app'));
        </script>
        <div id="app" class="container"></div>
    </jsp:body>
</m:base>