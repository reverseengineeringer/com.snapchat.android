.class final Lwe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwe;->a(ILwh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lwh;

.field final synthetic c:Lwe;


# direct methods
.method constructor <init>(Lwe;ILwh;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lwe$1;->c:Lwe;

    iput p2, p0, Lwe$1;->a:I

    iput-object p3, p0, Lwe$1;->b:Lwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 59
    iget-object v0, p0, Lwe$1;->c:Lwe;

    iget-object v0, v0, Lwe;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lwe$1;->c:Lwe;

    iget v2, p0, Lwe$1;->a:I

    iget-object v3, p0, Lwe$1;->b:Lwh;

    invoke-static {v2}, Lvk;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v1, Lwe;->b:Landroid/hardware/Camera;

    iget-object v0, v1, Lwe;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lwe;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, v1, Lwe;->c:Landroid/hardware/Camera$Parameters;

    iget-object v4, v1, Lwe;->a:Lws;

    iget-object v5, v1, Lwe;->c:Landroid/hardware/Camera$Parameters;

    if-eqz v5, :cond_3

    iget-object v6, v4, Lws;->a:Ljava/util/Set;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v8, Laue;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v8, v9, v0}, Laue;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lws;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lws;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, v4, Lws;->a:Ljava/util/Set;

    invoke-static {v4}, Lws;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_ENCODING_RESOLUTIONS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v5}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_2
    invoke-virtual {v3, v1, v2}, Lwh;->a(Lwc$b;I)V

    goto :goto_0

    :cond_4
    iget-object v0, v4, Lws;->c:Lazo;

    new-instance v4, Lnu;

    invoke-direct {v4}, Lnu;-><init>()V

    invoke-virtual {v0, v4}, Lazo;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Lwh;->b(I)V

    goto/16 :goto_0
.end method
