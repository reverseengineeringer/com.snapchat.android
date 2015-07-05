.class final Lcom/snapchat/android/ui/SnapEditorView$1;
.super Laus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;[Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$1;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iput-object p3, p0, Lcom/snapchat/android/ui/SnapEditorView$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Laus;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$1;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SwipeImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->a(Landroid/graphics/Bitmap;)Z

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$1;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    return-void
.end method
