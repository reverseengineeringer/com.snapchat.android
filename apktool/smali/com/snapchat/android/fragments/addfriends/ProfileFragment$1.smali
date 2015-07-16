.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanh;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {p1}, Laph;->a(Lanh;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    instance-of v0, p1, Lanr;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lanr;

    .line 201
    iget-boolean v1, v0, Lanr;->b:Z

    if-eqz v1, :cond_2

    .line 204
    iget-wide v0, v0, Lanr;->a:J

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;

    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    :cond_0
    :goto_0
    instance-of v0, p1, Laob;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    .line 218
    :cond_1
    return-void

    .line 209
    :cond_2
    iget-wide v0, v0, Lanr;->a:J

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;

    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Ljava/util/List;)V

    goto :goto_0
.end method
