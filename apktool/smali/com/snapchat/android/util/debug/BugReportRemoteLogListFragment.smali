.class public Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 29
    return-void
.end method

.method private static i()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 73
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    const/16 v0, 0x2e

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v1, v4, :cond_2

    .line 80
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 33
    const v0, 0x7f040012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mFragmentLayout:Landroid/view/View;

    .line 36
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 37
    new-instance v2, Lbag;

    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;->i()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lbag;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    new-instance v2, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$1;-><init>(Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    return-object v1
.end method
