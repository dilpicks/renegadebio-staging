// Card
export interface ICard {
  id: string
  headline?: string
  content?: string
  type?: string | null | undefined
  link?: ILink
  color?: string
  prehead?: string
  image?: IImage
  classes?: Array<string>
}

// Copy Blocks
export interface ICopyBlock {
  content: string
  id?: string
  classes?: Array<string>
}

// Current User
export interface ICurrentUser {
  id: number
}

// Element Refs
export interface IElementRefs {
  [key: string]: Proxy
}

// Form
export interface IForm {
  fields: Array<IFormField>
  id?: string
  classes?: Array<string>
}

// Form Field
export interface IFormField {
  id: string
  type: string
  label: string
  placeholder: string
  input?: string
  disabled?: boolean
  name?: string
  classes?: Array<string>
}

// Gallery
export interface IGallery {
  id: string
  galleryItems: Array<IGalleryItem>
  classes?: Array<string>
}

// Gallery Item
export interface IGalleryItem {
  id: string
  attibution: string
  content: string
  image: IImage
  classes?: Array<string>
}

// Image
export interface IImage {
  id: string
  src: string
  width: number
  height: number
  title?: string
  alt?: string
  classes?: Array<string>
}

// Link
export interface ILink {
  type: 'external' | 'route-link' | 'anchor'
  content: string
  id?: string
  href?: string
  rel?: string
  target?: string
  classes?: Array<string>
}

// Page Data
export interface IPageData {
  id: string
  classes?: Array<string>
  title?: string
  copyBlocks?: Array<ICopyBlock>
  cards?: Array<ICard>
  risographs?: Array<IRisographImage>
  images?: Array<IImage>
  shapes?: Array<IShapeImage>
}

// Register User
export interface IRegisterUser extends IUserLogin {
  password_confirmation: string
}

// Risograph Image
export interface IRisographImage extends IImage {
  offsetX?: number
  offsetY?: number
}

// Shape Image
export interface IShapeImage extends IImage {
  clip?: string
  offsetX?: number
  offsetY?: number
}

// Tab
export interface ITab {
  id: string
  headline: string
  title?: string
  image?: string
  prehead?: string
  content?: string
  link?: ILink
  classes?: Array<string>
}

// User Login
export interface IUserLogin {
  email: string
  password: string
}
