.class Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/util/SparseIntArray;

.field h:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    .line 409
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$2;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState$2;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->h:Landroid/os/Parcelable;

    .line 347
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 362
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->h:Landroid/os/Parcelable;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->f:I

    .line 370
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    if-lez v1, :cond_1

    .line 373
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 376
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_0
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    goto :goto_0

    .line 379
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    .line 353
    sget-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->a:Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;

    if-eq p1, v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->h:Landroid/os/Parcelable;

    .line 354
    return-void

    .line 353
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;B)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->h:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 390
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    move v0, v1

    .line 396
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    if-lez v0, :cond_1

    .line 398
    :goto_1
    if-ge v1, v0, :cond_1

    .line 399
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableRecyclerView$SavedState;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    goto :goto_0

    .line 403
    :cond_1
    return-void
.end method
