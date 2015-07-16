.class final Lahk$b;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lahk;


# direct methods
.method private constructor <init>(Lahk;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lahk$b;->a:Lahk;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lahk;B)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lahk$b;-><init>(Lahk;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .prologue
    .line 203
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lahk$b;->a:Lahk;

    invoke-static {v0}, Lahk;->b(Lahk;)Ljava/util/List;

    move-result-object v0

    .line 205
    :goto_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 206
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 208
    return-object v1

    .line 203
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lahk$b;->a:Lahk;

    invoke-static {v0}, Lahk;->c(Lahk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-boolean v4, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lavg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lavg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lahk$b;->a:Lahk;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lahk;->a(Lahk;Ljava/util/List;)Ljava/util/List;

    .line 198
    iget-object v0, p0, Lahk$b;->a:Lahk;

    invoke-virtual {v0}, Lahk;->notifyDataSetChanged()V

    .line 199
    return-void
.end method
