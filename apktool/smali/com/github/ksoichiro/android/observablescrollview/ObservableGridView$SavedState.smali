.class Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView;
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
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->a:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->c:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->d:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->e:I

    .line 324
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    if-lez v1, :cond_0

    .line 327
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;B)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 338
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    move v0, v1

    .line 344
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    if-lez v0, :cond_1

    .line 346
    :goto_1
    if-ge v1, v0, :cond_1

    .line 347
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableGridView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method
