.class final Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;
.super Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final mSectionIndexerDelegate:Landroid/widget/SectionIndexer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V

    .line 14
    check-cast p2, Landroid/widget/SectionIndexer;

    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    .line 15
    return-void
.end method


# virtual methods
.method public final getPositionForSection(I)I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public final getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
