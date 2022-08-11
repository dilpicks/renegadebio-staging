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
  id: string
  type: 'external' | 'route-link'
  href: string
  content: string
  rel?: string
  target?: string
  classes?: Array<string>
}

// Card
export interface ICard {
  id: string
  headline: string
  content: string
  link: TLink
  color?: string
  prehead?: string
  image?: IImage
  classes?: Array<string>
}

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
