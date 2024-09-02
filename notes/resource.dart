- vs-code snippets - https://github.com/r5n-dev/vscode-react-javascript-snippets/blob/HEAD/docs/Snippets.md

Mounting:
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

Updating:
    - If there is a update in states or props, component will be updated.
    
    - getDerivedStateFromProps()
    - shouldComponentUpdate()
    - render()
    - getSnapshotBeforeUpdate()
    - componentDidUpdate()