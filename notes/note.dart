- vs-code snippets - https://github.com/r5n-dev/vscode-react-javascript-snippets/blob/HEAD/docs/Snippets.md

Class Component Lifecycle:
    - Mounting:
        - constructor(props): initiate component props, either thru props or static content
            - ex:
            constructor(props) {
                super(props);
                this.state = props;
            }

        - static getDerivedStateFromProps(state, props): before rendoring, this method is called to set the state from props
            - ex:
            static getDerivedStateFromProps(state, props) {
                return {favoritecolor: props.favcol }
            }
        
        - render()
            render() {
                return (
                    <>
                        <h1> Hi </h1>
                        <p> Hello </p>
                    </>
                )
            }

        - componentDidMount()

    - Updating:
        - If there is a update in states or props, component will be updated.

        - getDerivedStateFromProps()
        - shouldComponentUpdate() - true/false to update the component
        - render()
        - getSnapshotBeforeUpdate()
        - componentDidUpdate()

    - Unmounting:
        - componentWillUnmount() - Called when removed component from DOM

React props: 
    - props is nothing but properties
    - props receiving as HTML attributes and send them to components.
    Ex:
    - <NewComponent2 color='blue' model="2021" country="IND" state="KA" />
    - FunctionComponent.js 


Adding Events:
    - onClick, onChange, onMouseOver
    - events are written in curly braces
    - Ex:
        onClick ={ submitted}

Conditional Rendering:
    - Using
        - if statements
        - logical && operator
            ex:
                {cars.length > 0 &&
                    <h2>
                    You have {cars.length} cars in your garage.
                    </h2>
                } 
        - Ternary operator
            condition? trueCase: falseCase;


Form: refer LoginComponent
    - To turn off the default behaviour of any element, event.preventDefault()

Select: refer SelectComponent
    ex:
    <select> 
        <option> 1</option>
    </select>

React Router
    - Use BrowserRoute.Routes.Route.Route
    - Navigation is thru <Link to> </Link>

React Memo (https://www.w3schools.com/react/react_memo.asp)
    - It will help to avoid unwanted re-rendering of components.
    - ex: export default memo(Todos);


Styling React Using CSS:

    - Inline style: style value must be object and all the keys need to be in camelCase format.
        - <form style={{ backgroundColor: 'pink', color: 'black' }}>

    - CSS Stylesheet: Write CSS in a separate file and use it in the component.
        - Ex: App.css, imported in App.js
        - import './App.css';
    
    - CSS modules: Write CSS in a separate file ending with *.module.css file and import to a component, applicable for that component only.
        - import styles from './my-style.module.css'; 
        - return <h1 className={styles.bigblue}>Hello Car!</h1>;
    
    - SASS: https://www.w3schools.com/react/react_sass_styling.asp
        - We can use sass also

React Hooks







