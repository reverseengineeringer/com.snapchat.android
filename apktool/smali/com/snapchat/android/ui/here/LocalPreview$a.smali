.class final Lcom/snapchat/android/ui/here/LocalPreview$a;
.super Lcom/snapchat/android/util/gl/GlTextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/LocalPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/LocalPreview;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/ui/here/LocalPreview;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview$a;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    .line 64
    invoke-direct {p0, p2}, Lcom/snapchat/android/util/gl/GlTextureView;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview$a;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->a(Lcom/snapchat/android/ui/here/LocalPreview;)V

    .line 70
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview$a;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LocalPreview$a;->a:Lcom/snapchat/android/ui/here/LocalPreview;

    iget-object v1, v1, Lcom/snapchat/android/ui/here/LocalPreview;->d:[B

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/here/LocalPreview;->a(Lcom/snapchat/android/ui/here/LocalPreview;[B)V

    .line 75
    return-void
.end method
