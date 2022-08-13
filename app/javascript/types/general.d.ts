export interface IUserLogin {
  email: string
  password: string
}

export interface IRegisterUser extends IUserLogin {
  password_confirmation: string
}

export interface ICurrentUser {
  id: number
}

export interface IElementRefs {
  [key: string]: HTMLDivElement
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

export interface IRisographImage extends IImage {
  offsetX?: number
  offsetY?: number
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

// Card
export interface ICard {
  id: string
  headline: string
  content: string
  link: ILink
  color?: string
  prehead?: string
  image?: IImage
  classes?: Array<string>
}

// TabItem
// export interface ITabItem {
//   id: string
//   content: string
//   link: ILink
//   prehead?: string
//   headline?: string
//   image?: IImage
//   classes?: Array<string>
// }

// Tab Content
// export interface ITabContent {
//   content: string
//   id?: string
//   link?: ILink
//   prehead?: string
//   headline?: string
//   classes?: Array<string>
// }

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

// TabList
// export interface ITabList {
//   tabItems: Array<ITab>
//   classes?: Array<string>
// }

// Gallery
export interface IGallery {
  id: string
  galleryIitems: Array<IGalleryItem>
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
