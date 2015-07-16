.class public final Lvj;
.super Lvm;
.source "SourceFile"

# interfaces
.implements Lvh$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvm",
        "<",
        "Lbid;",
        ">;",
        "Lvh$a;"
    }
.end annotation


# instance fields
.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lakp;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lvl;Lvm$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lvl",
            "<",
            "Lbid;",
            ">;",
            "Lvm$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lvm;-><init>(Lvl;Lvm$a;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj;->f:Z

    .line 35
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lvj;->d:Ljavax/inject/Provider;

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lvj;->c:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lvj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    if-eqz p1, :cond_0

    .line 110
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void

    .line 112
    :cond_0
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lvj;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 98
    iget-object v1, p0, Lvj;->e:Lakp;

    if-ne v1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj;->f:Z

    .line 100
    iget-object v0, p0, Lvj;->b:Lvm$a;

    invoke-interface {v0}, Lvm$a;->d_()V

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbid;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lvj;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 78
    iget-object v1, p0, Lvj;->e:Lakp;

    if-ne v1, v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj;->f:Z

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0, v2}, Lvj;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lvj;->b:Lvm$a;

    invoke-interface {v0}, Lvm$a;->d()V

    .line 90
    :goto_0
    iget-object v0, p0, Lvj;->e:Lakp;

    invoke-virtual {v0, v2}, Lakp;->a(Lakp$b;)V

    .line 93
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbid;

    .line 86
    invoke-virtual {v0}, Lbid;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lvj;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lvj;->a:Lvl;

    invoke-interface {v0, p1}, Lvl;->a(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lvj;->b:Lvm$a;

    invoke-interface {v0}, Lvm$a;->c_()V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lvj;->f:Z

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvj;->f:Z

    .line 57
    iget-object v0, p0, Lvj;->b:Lvm$a;

    invoke-interface {v0}, Lvm$a;->b_()V

    .line 59
    iget-object v0, p0, Lvj;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    iput-object v0, p0, Lvj;->e:Lakp;

    .line 61
    iget-object v0, p0, Lvj;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CONVERSATIONS_ITER_TOKEN:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj;->f:Z

    .line 64
    iget-object v0, p0, Lvj;->b:Lvm$a;

    invoke-interface {v0}, Lvm$a;->d()V

    goto :goto_0

    .line 67
    :cond_1
    new-instance v1, Lvh;

    invoke-direct {v1, v0, p0}, Lvh;-><init>(Ljava/lang/String;Lvh$a;)V

    invoke-virtual {v1}, Lvh;->execute()V

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lvj;->f:Z

    return v0
.end method
