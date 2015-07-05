.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1141
    if-nez p1, :cond_0

    .line 1142
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - onProfileImagesLoaded but bitmapList is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    :goto_0
    return-void

    .line 1143
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1144
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - loaded profile images from cache but the number of images is wrong!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Ljava/util/List;)Ljava/util/List;

    .line 1147
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Ljava/util/List;)V

    .line 1148
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - pictures were loaded from cache"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
