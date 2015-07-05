.class final Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LockingAboveTheFoldListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/BaseAdapter;

.field final synthetic b:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->b:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;B)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;-><init>(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 799
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 800
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 802
    iget-object v3, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 803
    if-eqz v3, :cond_0

    .line 804
    iget-object v4, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->b:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    invoke-static {v4}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a(Lcom/snapchat/android/ui/LockingAboveTheFoldListView;)Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 787
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 789
    iget-object v0, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onChanged cannot be called without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->a()Ljava/util/Set;

    move-result-object v0

    .line 794
    iget-object v1, p0, Lcom/snapchat/android/ui/LockingAboveTheFoldListView$a;->b:Lcom/snapchat/android/ui/LockingAboveTheFoldListView;

    iget-object v1, v1, Lcom/snapchat/android/ui/LockingAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 795
    return-void
.end method
